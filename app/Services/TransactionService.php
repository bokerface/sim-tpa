<?php

namespace App\Services;

use App\Models\Transaction;

class TransactionService
{

    public static function transactionIndex($userId = null)
    {
        return Transaction::with(['orders.orderparticipants', 'orders.training', 'orders.orderparticipants.student', 'user.userProfile'])
            ->when($userId, fn ($query) => $query->where('user_id', $userId))
            ->orderBy('created_at', 'desc')
            ->get();
        // ->paginate(10)
        // ->withQueryString();
    }

    public static function transactionDetail($id)
    {
        return Transaction::with(['orders.orderparticipants', 'orders.training', 'orders.orderparticipants.student'])
            ->findOrFail($id);
    }
}
