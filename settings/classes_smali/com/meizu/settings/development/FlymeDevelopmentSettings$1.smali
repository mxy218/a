.class Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;
.super Ljava/lang/Object;
.source "FlymeDevelopmentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/development/FlymeDevelopmentSettings;->copyFingerprintDataToSdcard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/development/FlymeDevelopmentSettings;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "fpdata.zip"

    .line 246
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/fpdata/gf_data"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 248
    iget-object v3, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    const-string v4, "/data/vendor/gf_data"

    invoke-static {v3, v4}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$000(Lcom/meizu/settings/development/FlymeDevelopmentSettings;Ljava/lang/String;)V

    .line 252
    :try_start_13
    new-instance v3, Lcom/meizu/settings/utils/ZipUtils;

    invoke-direct {v3}, Lcom/meizu/settings/utils/ZipUtils;-><init>()V

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/fpdata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/meizu/settings/utils/ZipUtils;->ZipTarget(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MzDevelopmentSettings"

    const-string/jumbo v2, "zip exception.."

    .line 258
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 262
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 265
    :cond_42
    iget-object p0, p0, Lcom/meizu/settings/development/FlymeDevelopmentSettings$1;->this$0:Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    const v0, 0x7f120587

    invoke-static {p0, v0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->access$100(Lcom/meizu/settings/development/FlymeDevelopmentSettings;I)V

    return-void
.end method
