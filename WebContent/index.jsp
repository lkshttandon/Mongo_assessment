<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Assessment MongoDB</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<form action="AdFetch" method="post">
		<div class="container">

			<div class="row">
				<div class="col-md-6 offset-3">

					<h2 style="text-align: center;">Type of posting:</h2>
					<div style="margin-left: 2in;">
						<input type="radio" name="adoption" value="job offered">
						Job Offered <br> <input type="radio" name="adoption"
							value="gig offered"> Gig offered <br> <input
							type="radio" name="adoption" value="resume / job wanted"> Resume/ Job
						Wanted <br> <br> <input type="radio" name="adoption"
							value="housing offered"> Housing Offered <br> <input
							type="radio" name="adoption" value="housing wanted"> Housing
						Wanted <br> <br> <input type="radio" name="adoption"
							value="for sale by Owner"> For Sale by Owner <br> <input
							type="radio" name="adoption" value="for sale by dealer"> For Sale
						by Dealer <br> <input type="radio" name="adoption"
							value="wanted by owner"> Wanted by Owner <br> <input
							type="radio" name="adoption" value="wanted by dealer"> Wanted by
						Dealer <br> <br> <input type="radio" name="adoption"
							value="service offered"> Service Offered <br> <br>
						<input type="radio" name="adoption" value="community">
						Community <br> <input type="radio" name="adoption"
							value="event / class"> Event/Class <br>
					</div>
				</div>
			</div>
			<h3>Please Fill the following Form:</h3>
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						Posting Title: <input type="text" name="title" min="0"
							class="form-control">
					</div>
				</div>
				<div class="col-md-5">
					City or Neighborhood : <input type="text" name="city"
						class="form-control">
				</div>
				<div class="col-md-3">
					Postal Code: <input type="text" name="postal" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					Description:
					<textarea rows="7" class="form-control"
						placeholder="Enter Description" name="description"></textarea>
					<br>
					<div style="border: 1px solid rgb(185, 183, 183); padding: 5px;">
						<h5>Contact Info</h5>
						<div class="row">
							<div class="col-md-4">
								Email: <input type="text" name="email" class="form-control"><br>
								<div style="font-size: 10pt;">
									<b>Email privacy options</b><br> <input type="radio"
										name="emu" value="CLrecom">CL may relay(recommended) <br>
									<input type="radio" name="emu" value="norep">No replies
									to this email <br>
								</div>
							</div>
							<div class="col-md-8" style="font-size: 10pt">
								<b>Phone/Text</b><br>
								<div class="col-md-12">
									<div class="form-inline">
										<input type="checkbox" class="form-control" name="emu1"
											value="showphone" style="margin-left: 15px;">Show my
										phone number <input type="checkbox" class="form-control"
											name="emu2" value="phoneok" style="margin-left: 15px;"
											disabled> Phone calls OK <input type="checkbox"
											class="form-control" name="emu2" value="textok"
											style="margin-left: 15px;" disabled> Text/SMS OK
									</div>
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												Phone Number: <input type="number" name="phone" min="0"
													class="form-control">
											</div>
										</div>
										<div class="col-md-3">
											Extension: <input type="text" name="ext" class="form-control"
												required>
										</div>
										<div class="col-md-5">
											Contact Name: <input type="text" name="contactname"
												class="form-control" required>
										</div>
									</div>

								</div>
							</div>
						</div>

					</div>
					<input type="checkbox" value="okforothers"> Ok for others
					to contact you about others services,products or commercial
					interests<br>
					<div style="text-align: right;">
						<input type="submit" class="btn btn-primary" name="button"
							value="Continue">
					</div>

				</div>
			</div>
		</div>
	</form>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>