.class Lcom/meizu/settings/utils/FlymeAccountHelper$6;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;->saveUserIcon(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 413
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$6;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iput-object p2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    .line 418
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$6;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v2}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$1200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_21
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f

    .line 419
    :try_start_c
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$6;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_1c
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 425
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2b

    goto :goto_2f

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_30

    :catch_1c
    move-exception p0

    move-object v0, v1

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_30

    :catch_21
    move-exception p0

    .line 421
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    if-eqz v0, :cond_2f

    .line 425
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void

    :goto_30
    if-eqz v0, :cond_3a

    .line 425
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 428
    :cond_3a
    :goto_3a
    throw p0
.end method
