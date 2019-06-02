# RentACar SFDX Metadat
<h1>RentACar data scripts</h1>

<h2>Classes you can use to create the data</h2>
<p><a href="/RentACar/classes/CreateData.cls"><strong style="color:blue">CreateData.apxc</strong></a>: This file has the code to create the data to be used in your RentACar Application</p>
<p><a href="/RentACar/classes/DeleteData.apxc.cls"><strong style="color:blue">DeleteData.apxc</strong></a>: This file has the code to delete the data created by CreatedData.apxc file</p>
<p><a href="/RentACar/classes/CreateDataTest.apxc.cls"><strong style="color:blue">CreateDataTest.apxc</strong></a>: TestClass for CreateData class</p>
<p><a href="/RentACar/classes/DeleteDataTest.apxc.cls"><strong style="color:blue">DeleteDataTest.apxc</strong></a>: TestClass for DeleteData class</p>

<h3>How to Call CreateData class</h3>
<strong>Once you have created your "CreateData" class, follow below steps to call the class method to generate data</strong>
<ul>
<li> Open your developer console
<li> Click on 'Debug' menu item
<li> Select 'Open Execute Anonymous Window'
<li> Type CreateData.createPackageData();
</ul>

<h3>How to Call DeleteData class</h3>
<strong>Once you have created your "DeleteData" class, follow below steps to call the class method to delete data</strong>
<li> Open your developer console</li>
<li> Click on 'Debug' menu item</li>
<li> Select 'Open Execute Anonymous Window'</li>
<li> Type DeleteData.deleteData();</li>
</ul>

<br/>
<h2>Also download this <a href="cars.zip">static resource file</a> and upload in your org. This static resource contains images of the cars.</h2>
