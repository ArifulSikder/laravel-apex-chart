<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index()
    {
        $now = new Carbon();
        $year = $now->format('Y');

        $monthlyOrderTk = [];
        for ($i = 1; $i <= 12; $i++) {
            $everyMonthOrderTk = Order::whereYear('created_at', $year)
                ->whereMonth('created_at', $i)
                ->sum('total_price');

            $monthlyOrderTk["$year-$i-1"] = $everyMonthOrderTk;
        }

        $yearlySales = Order::whereYear('created_at', $year)
        ->sum('total_price');
        
        
        $monthlyOrderPercentage = [];
        for ($i = 1; $i <= 12; $i++) {
            $everyMonthOrderPercentage = Order::whereYear('created_at', $year)
                ->whereMonth('created_at', $i)
                ->sum('total_price') * 100 / $yearlySales ;

            $monthlyOrderPercentage["$year-$i-1"] = round($everyMonthOrderPercentage);
        }
    }
}