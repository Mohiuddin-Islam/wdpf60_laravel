<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h3>Student Entry Form</h3>
    <fieldset style="width: fit-content">

    <form action="{{route('student.store')}}" method="post">
        @csrf
        Name: <input type="text" name="name" placeholder="Enter Name"><br>
        Email: <input type="text" name="email" placeholder="Enter Email Address"><br>
        Phone: <input type="text" name="phone" placeholder="Enter Phone Number"><br><br>
        <input type="submit" name="submit" value="SUBMIT">

    </form>
</fieldset>

</body>
</html>