<h1>Database Practice Lab</h1>
<blockquote>
  <p>A personal laboratory for practicing and mastering <strong>SQL Server</strong> database design, queries, and optimization.</p>
</blockquote>
<p>This repository contains SQL scripts, Docker configurations, and solved exercises for learning relational databases. The main focus is on <strong>SQL Server</strong>, but the structure is designed to be extended to other DBMS in the future (Oracle, PostgreSQL, MySQL).</p>
<hr />
<h2>📁 Repository Structure</h2>
<pre><code>BDD/
├── SQL_Server/                         # SQL Server specific scripts and exercises
│     ├── Products/                     # Example project: Products, Categories, Stores
│     │    ├── 0_create_db.sql          # Table creation (DDL) + constraints (PK, FK)
│     │    ├── 0_populate_db.sql        # Sample data insertion (DML)
│     │    └── 1_init_queries.sql       # Basic queries (SELECT, JOINs, aggregations)
│     └── docker-compose.yml            # SQL Server container configuration
├── .gitignore                  
└── README.md                   
</code></pre>
<hr />
<h2>Getting Started</h2>
<h3>Prerequisites</h3>
<ul>
  <li><a href="https://www.docker.com/products/docker-desktop/">Docker Desktop</a> (Windows/Mac) or Docker Engine (Linux)</li>
  <li>A SQL client (e.g., <a href="https://dbeaver.io/">DBeaver</a>, Azure Data Studio, or VS Code extensions)</li>
</ul>


<h3>1. Start SQL Server Container</h3>
<p>Navigate to the <code>BDD/SQL_Server/</code> directory and run:</p>
<pre><code class="language-bash">cd BDD/SQL_Server/
docker-compose up -d
</code></pre>
<p>This will:</p>
<ul>
  <li>Pull the official <strong>SQL Server 2022</strong> Linux image</li>
  <li>Start a container named <code>sqlserver-products</code></li>
  <li>Expose port <code>1433</code> for connections</li>
  <li>Persist data in a Docker volume (<code>sqlserver-data</code>)</li>
</ul>


<h3>2. Connect to the Database</h3>
<p>Use any SQL client with the following credentials:</p>
<table>
  <thead>
    <tr>
      <th>Setting</th>
      <th>Value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Host</strong></td>
      <td><code>localhost</code> or <code>127.0.0.1</code></td>
    </tr>
    <tr>
      <td><strong>Port</strong></td>
      <td><code>1433</code></td>
    </tr>
    <tr>
      <td><strong>Username</strong></td>
      <td><code>sa</code></td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td><code>YourStrong!Passw0rd</code></td>
    </tr>
    <tr>
      <td><strong>Database</strong></td>
      <td><code>MiProyectoEstudio</code></td>
    </tr>
  </tbody>
</table>


<h3>3. Run the SQL Scripts (Example)</h3>
<p>Execute the scripts in order:</p>
<table>
  <thead>
    <tr>
      <th>Order</th>
      <th>Script</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><code>0_create_db.sql</code></td>
      <td>Creates the <code>MiProyectoEstudio</code> database and tables (<code>Category</code>, <code>Product</code>, <code>Store</code>, <code>Product_x_Store</code>)</td>
    </tr>
    <tr>
      <td>2</td>
      <td><code>0_populate_db.sql</code></td>
      <td>Inserts sample data (8 categories, 40 products, 6 stores, 65+ stock entries)</td>
    </tr>
    <tr>
      <td>3</td>
      <td><code>1_init_queries.sql</code></td>
      <td>Example queries to test the database (SELECT, JOINs, GROUP BY, aggregations)</td>
    </tr>
  </tbody>
</table>


<hr />
<h2>Useful Commands</h2>
<h3>Stop and remove the container</h3>
<pre><code class="language-bash">docker-compose down
</code></pre>
<h3>Remove container and data volume (hard reset)</h3>
<pre><code class="language-bash">docker-compose down -v
</code></pre>
<h3>View container logs</h3>
<pre><code class="language-bash">docker logs sqlserver-products
</code></pre>


<hr />
<h2>Learning Goals</h2>
<ul>
  <li>Understand SQL <strong>DDL</strong> (<code>CREATE</code>, <code>ALTER</code>, <code>DROP</code>)</li>
  <li>Understand SQL <strong>DML</strong> (<code>SELECT</code>, <code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code>)</li>
  <li>Practice <strong>JOINs</strong> (<code>INNER</code>, <code>LEFT</code>, <code>RIGHT</code>, <code>FULL</code>, <code>CROSS</code>)</li>
  <li>Use <strong>aggregation functions</strong> (<code>COUNT</code>, <code>SUM</code>, <code>AVG</code>, <code>MIN</code>, <code>MAX</code>)</li>
  <li>Apply <code>GROUP BY</code> and <code>HAVING</code> clauses</li>
  <li>Work with <code>NULL</code> values and <strong>constraints</strong> (<code>PK</code>, <code>FK</code>, <code>UNIQUE</code>, <code>DEFAULT</code>)</li>
  <li>Learn <strong>containerized database</strong> management with Docker</li>
</ul>


<hr />
<h2>Future Roadmap</h2>
<ul>
  <li>[ ] Add Oracle examples</li>
  <li>[ ] Add PostgreSQL examples</li>
  <li>[ ] Add MySQL examples</li>
  <li>[ ] Include stored procedures and triggers</li>
  <li>[ ] Add performance optimization exercises (indexes, execution plans)</li>
  <li>[ ] Add transaction management examples (<code>COMMIT</code>, <code>ROLLBACK</code>)</li>
</ul>


<hr />
<h2>Notes</h2>
<ul>
  <li>Scripts are written for <strong>SQL Server</strong> (T-SQL). Some syntax may differ for other DBMS.</li>
  <li>The <code>docker-compose.yml</code> uses SQL Server 2022. For older versions, change the <code>image</code> tag to <code>mcr.microsoft.com/mssql/server:2019-latest</code>.</li>
</ul>

