<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\JobApplication;
use Illuminate\Http\Request;

class JobApplicationController extends Controller
{
    public function index(){

        $applications = JobApplication::orderBy('created_at', 'DESC')
                                        ->with('job','user','employer')
                                        ->paginate(5);

        return view('admin.job-applications.list',[
            'applications' => $applications
        ]);
    }

    public function destroy(Request $request){
        $id = $request->id;

        $applications = JobApplication::find($id);

        if($applications == null){
            session()->flash('error', 'Either job application deleted or not found.');

            return response()->json([
                'status' => false
            ]);
        }

        $applications->delete();
        session()->flash('success', 'Job application deleted successfully.');
        return response()->json([
            'status' => true
        ]);
    }
}
