cls

"    ______              "
"   / ____/___ _      __ "
"  / / __/ __ \ | /| / / "
" / /_/ / /_/ / |/ |/ /  "
" \____/\____/|__/|__/   "
"                        "
Write-Host "Welcome to Gow, the ultimate but simple Go app bootstrapper! Let's create an app."
$app_type = Read-Host "What type of app do you want to create today? [Console/Desktop (Wails)/Web] (default: Web)"

If($app_type -eq "Console") 
{
    New-Item -Path . -Name "GowProject" -ItemType "directory"
    Set-Location -Path GowProject
    New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ("fmt"); 	 func main() { 	fmt.Println("Hello Gow World!") }'
    gofmt -w main.go

} ElseIf($app_type -eq "Web")
{
    #$gweb = Read-Host "Do you want to use Gweb, our new web framework for Go? [y/N] "
    $htmx = Read-Host "Do you want to use htmx? [y/N] "
    $bootstrap = Read-Host "Do you want to use Bootstrap 5? [y/N]"

    If(($htmx -eq "y") -and ($bootstrap -eq "y"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        gofmt -w main.go
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- htmx --> <script src="https://unpkg.com/htmx.org@1.9.10"></script>     <!-- bootstrap --> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'

    } ElseIf(($htmx -eq "y") -and ($bootstrap -eq "N"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- htmx --> <script src="https://unpkg.com/htmx.org@1.9.10"></script>     </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    } ElseIf(($htmx -eq "N") -and ($bootstrap -eq "y"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- bootstrap --> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    } ElseIf(($htmx -eq "N") -and ($bootstrap -eq "N"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    }
    
} ElseIf($app_type -eq "")
{
    #$gweb = Read-Host "Do you want to use Gweb, our new web framework for Go? [y/N] "
    $htmx = Read-Host "Do you want to use htmx? [y/N] "
    $bootstrap = Read-Host "Do you want to use Bootstrap 5? [y/N]"

    If(($htmx -eq "y") -and ($bootstrap -eq "y"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        gofmt -w main.go
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- htmx --> <script src="https://unpkg.com/htmx.org@1.9.10"></script>     <!-- bootstrap --> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'

    } ElseIf(($htmx -eq "y") -and ($bootstrap -eq "N"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- htmx --> <script src="https://unpkg.com/htmx.org@1.9.10"></script>     </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    } ElseIf(($htmx -eq "N") -and ($bootstrap -eq "y"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     <!-- bootstrap --> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    } ElseIf(($htmx -eq "N") -and ($bootstrap -eq "N"))
    {
        New-Item -Path . -Name "GowProject" -ItemType "directory"
        Set-Location -Path GowProject
        New-Item -Path . -Name "main.go" -ItemType "file" -Value 'package main;  import ( 	"fmt"; 	"log"; 	"net/http"; 	"text/template" ); 	 func main() { 	fmt.Println("Server starting...");  	handler := func(w http.ResponseWriter, r *http.Request) { 		tmpl := template.Must(template.ParseFiles("index.html")); 		tmpl.Execute(w, nil); 	}; 	 	http.HandleFunc("/", handler); 	log.Fatal(http.ListenAndServe(":9090", nil)); }'
        New-Item -Path . -Name "index.html" -ItemType "file" -Value '<!DOCTYPE html> <html lang="en"> <head>     <meta charset="UTF-8">     <meta name="viewport" content="width=device-width, initial-scale=1.0">     <title>Document</title>     </head> <body>     <h1>Hello Gow World! </h1> </body> </html>'
    }
    
}  ElseIf($app_type -eq "Desktop")
{
    Write-Host "Support for Wails is coming..."
} ElseIf($app_type -eq "Wails")
{
    Write-Host "Support for Wails is coming..."
} Else
{
    Write-Host "Sorry, didn't understand."
}


#($gweb -eq "y")
