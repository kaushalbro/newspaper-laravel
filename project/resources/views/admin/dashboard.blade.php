@extends('layouts.admin')

@section('content')
<div class="content-area">
    <div class="row row-cards-one">
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg1">
                <div class="left">
                    <h5 class="title">{{ __('Post') }} </h5>
                    @php
                        $user = Auth::guard('admin')->user()->role;
                    @endphp
                    @if ($user->name != 'admin' && $user->name != 'moderator')
                        <span class="number">{{ $author_post }}</span>
                    @else 
                        <span class="number">{{ $total_post }}</span>
                    @endif
                    <a href="{{ route('post.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fab fa-blogger-b"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg2">
                <div class="left">
                    <h5 class="title">{{ __('Pending Post') }}</h5>
                    @if ($user->name != 'admin' && $user->name != 'moderator')
                        <span class="number">{{ $author_pending }}</span>
                    @else 
                        <span class="number">{{ $pending_posts }}</span>
                    @endif
                    <a href="{{ route('pending.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fas fa-hourglass"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg3">
                <div class="left">
                    <h5 class="title">{{ __('Draft') }}</h5>
                    <span class="number">{{ $drafts }}</span>
                    <a href="{{ route('draft.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fas fa-pen-square"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg4">
                <div class="left">
                    <h5 class="title">{{ __('Schedule Post') }}</h5>
                    <span class="number">{{ $schedules }}</span>
                    <a href="{{ route('schedule.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fas fa-clock"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg5">
                <div class="left">
                    <h5 class="title">{{ __('Rss Feeds') }}</h5>
                    <span class="number">{{ $rss}}</span>
                    <a href="{{ route('rss.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fas fa-rss"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
            <div class="mycard bg6">
                <div class="left">
                    <h5 class="title">{{ __('Polls') }}</h5>
                    <span class="number">{{ $polls}}</span>
                    <a href="{{ route('addPolls.index') }}" class="link">{{ __('View All') }}</a>
                </div>
                <div class="right d-flex align-self-center">
                    <div class="icon">
                        <i class="fas fa-poll"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @if (auth()->guard('admin')->user()->whereId(1)->exists())
        
    <div class="row row-cards-one">
        <div class="col-md-6 col-xl-3">
            <div class="card c-info-box-area">
                <div class="c-info-box box1">
                    <p>{{ App\Models\Admin::where('id','!=',1)->where( 'created_at', '>', Carbon\Carbon::now()->subDays(30))->get()->count()  }}</p>
                </div>
                <div class="c-info-box-content">
                    <h6 class="title">{{ __('New Users') }}</h6>
                    <p class="text">{{ __('Last 30 Days') }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xl-3">
            <div class="card c-info-box-area">
                <div class="c-info-box box2">
                    <p>{{ App\Models\Admin::where('id','!=',1)->count() }}</p>
                </div>
                <div class="c-info-box-content">
                    <h6 class="title">{{ __('Total Users') }}</h6>
                    <p class="text">{{ __('All Time') }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xl-3">
            <div class="card c-info-box-area">
                <div class="c-info-box box3">
                    <p>{{ App\Models\Subscriber::get()->count()  }}</p>
                </div>
                <div class="c-info-box-content">
                    <h6 class="title">{{ __('Total Subscribers') }}</h6>
                    <p class="text">{{ __('All Time') }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xl-3">
            <div class="card c-info-box-area">
                <div class="c-info-box box4">
                     <p>{{ App\Models\Font::get()->count() }}</p>
                </div>
                <div class="c-info-box-content">
                    <h6 class="title">{{ __('Total Fonts') }}</h6>
                    <p class="text">{{ __('All Time') }}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row row-cards-one">
        <div class="col-md-6 col-lg-6 col-xl-6">
            <div class="card">
                <h5 class="card-header">{{ __('Recent User(s)') }}</h5>
                <div class="card-body">
                    <div class="my-table-responsiv">
                        <table class="table table-hover dt-responsive" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>{{ __('Email') }}</th>
                                    <th>{{ __('Joined') }}</th>
                                </tr>
                                @foreach($userRole as $role)
                                    @foreach ($role->users()->orderBy('id','desc')->take(10)->get() as $data)
                                        <tr>
                                            <td>{{ $data->email }}</td>
                                            <td>{{ $data->created_at }}</td>
                                        </tr>
                                    @endforeach
                                @endforeach
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-6 col-xl-6">
            <div class="card">
                <h5 class="card-header">{{ __('Subscribers') }}</h5>
                <div class="card-body">
                    <div class="my-table-responsiv">
                        <table class="table table-hover dt-responsive" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>{{ __("#Sl") }}</th>
                                    <th>{{ __("Email") }}</th>
                                </tr>
                                @foreach($subscribers as $data)
                                    <tr>
                                        <td>{{ $data->id }}</td>
                                        <td>{{ $data->email }}</td>
                                    </tr>
                                @endforeach
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif

</div>

@endsection

@section('scripts')

@endsection