<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller as BaseController;
use Symfony\Component\HttpFoundation\Response;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    /**
     * @param int $status
     * @param array $body
     * @return JsonResponse
     */
    protected function sendResponse(int $status, array $body = []): JsonResponse
    {
        $content = [
            'data' => $body,
        ];
        return response()->json($content)
            ->setStatusCode($status);
    }

    /**
     * @param array $body
     * @param string $message
     * @return JsonResponse
     */
    protected function sendResponseSuccess(array $body = [], string $message = ''): JsonResponse
    {
        $content = [
            'data' => $body,
        ];
        return response()->json($content)
            ->setStatusCode(Response::HTTP_OK);
    }

    /**
     * @param array $body
     * @return JsonResponse
     */
    protected function sendResponseBadRequest(array $body = []): JsonResponse
    {
        $content = [
            'data' => $body,
        ];
        return response()->json($content)
            ->setStatusCode(Response::HTTP_BAD_REQUEST);
    }

    /**
     * @param array $body
     * @return JsonResponse
     */
    protected function sendResponseServerError(array $body = []): JsonResponse
    {
        $content = [
            'data' => $body,
        ];
        return response()->json($content)
            ->setStatusCode(Response::HTTP_INTERNAL_SERVER_ERROR);
    }
}
