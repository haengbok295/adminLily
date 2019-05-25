<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBungaTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bunga', function(Blueprint $table)
		{
			$table->integer('kode_bunga', true);
			$table->string('nama_bunga', 191);
			$table->string('harga', 191);
			$table->text('deskripsi', 65535);
			$table->integer('jumlah');
			$table->string('gambar', 191);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('bunga');
	}

}
