<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	 crossorigin="anonymous">
	<title>NAS</title>
</head>

<body>
	<div class="container my-5">
		<div class="row">
			<h1 class="text-primary fw-bold">Raspberry Pi NAS Server using Bottle web framework</h1>
			<div class="p-3">
				<span class="text-muted">Created by</span>
        <ul>
          <li>Pavitra (RA1911003010586)</li>
          <li>Vikrant (RA1911003010632)</li>
        </ul>
      </div>
		</div>
		<div class="row align-items-start">
			<div class="col">
				<h3>Files <span class="badge rounded-pill bg-primary fs-6">{{len(files) if files else 0}}</span></h3>
				%if files:
				<ul class="list-group">
					%for file in files:
					<a href="/file/{{file}}" target="_blank" class="list-group-item list-group-item-action">{{file}}</a>
					%end
				</ul>
				%else:
				<div class="card">
					<div class="card-body">
						No files present.
					</div>
				</div>
				%end
			</div>
			<div class="w-100 d-block d-md-none my-3 my-md-0"></div>
			<div class="col">
				<h3>Upload files</h3>
				<form action="/upload" method="POST" enctype="multipart/form-data">
					<div class="mb-3">
						<label for="formFile" class="form-label">Choose a file to upload</label>
            <input class="form-control" type="file" id="formFile" name="upload" required>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
    </div>
  </div>
</body>

</html>