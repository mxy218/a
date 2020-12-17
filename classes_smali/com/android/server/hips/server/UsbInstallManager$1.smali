.class Lcom/android/server/hips/server/UsbInstallManager$1;
.super Landroid/os/Handler;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/UsbInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/server/UsbInstallManager;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 73
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_4a

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->access$200(Lcom/android/server/hips/server/UsbInstallManager;)I

    move-result v0

    if-lez v0, :cond_22

    .line 84
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->access$210(Lcom/android/server/hips/server/UsbInstallManager;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->access$300(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4a

    .line 87
    :cond_22
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->access$400(Lcom/android/server/hips/server/UsbInstallManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_4a

    .line 77
    :cond_2c
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 78
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 79
    .local v1, "apkName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v2}, Lcom/android/server/hips/server/UsbInstallManager;->access$000(Lcom/android/server/hips/server/UsbInstallManager;)Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$1;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/hips/server/UsbInstallManager;->access$100(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 81
    nop

    .line 92
    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "apkName":Ljava/lang/String;
    .end local v2  # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_4a
    return-void
.end method
