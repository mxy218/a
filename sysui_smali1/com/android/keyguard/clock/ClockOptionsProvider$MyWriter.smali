.class Lcom/android/keyguard/clock/ClockOptionsProvider$MyWriter;
.super Ljava/lang/Object;
.source "ClockOptionsProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/ClockOptionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/clock/ClockOptionsProvider$1;)V
    .registers 2

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockOptionsProvider$MyWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 178
    :try_start_0
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_1c

    .line 179
    :try_start_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x64

    invoke-virtual {p5, p1, p2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 180
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1c

    goto :goto_24

    :catchall_10
    move-exception p1

    .line 178
    :try_start_11
    throw p1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p2

    .line 180
    :try_start_13
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p0

    :try_start_18
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p0

    const-string p1, "ClockOptionsProvider"

    const-string p2, "fail to write to pipe"

    .line 181
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 6

    .line 174
    check-cast p5, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/android/keyguard/clock/ClockOptionsProvider$MyWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    return-void
.end method
