@extends('shop')

@section('content')
    <h1>Order Summery</h1>
    <table id="cart" class="table table-bordered" style="width:40%">
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>

            </tr>
        </thead>
        <tbody>
            @php $total = 0 @endphp
            @if (session('cart'))
                @foreach (session('cart') as $id => $details)
                    <tr rowId="{{ $id }}">
                        <td data-th="Product">
                            <div class="row">

                                <div class="col-sm-9">
                                    <h4 class="nomargin">{{ $details['name'] }}</h4>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">${{ $details['price'] }}</td>
                        <td data-th="Quantity">{{ $details['quantity'] }}</td>
                        <td data-th="Subtotal" class="text-center">${{ $details['quantity'] * $details['price'] }}</td>

                    </tr>

                    @php$total += $details['quantity'] * $details['price'];
                        $total = round($total);

                    @endphp
                @endforeach
            @endif
        </tbody>
        <tfoot>
            <tr>
                <th colspan="3">Total</th>
                <th> ${{ $total }}</th>
            </tr>
            <tr>
                <td colspan="5" class="text-right">
                    <form action="{{ route('session') }}" method="post">
                        @csrf
                        <a href="{{ url('/home') }}" class="btn btn-primary"><i class="fa fa-angle-left"></i> Continue
                            Shopping</a>
                        <button type="submit" class="btn btn-danger">Place Order <i class="fa fa-angle-right"></i></button>
                        <input type='hidden' name="total" value="{{ $total }}">
                        <input type='hidden' name="productDetails" value="Sample">
                    </form>

                </td>
            </tr>
        </tfoot>
    </table>
@endsection
