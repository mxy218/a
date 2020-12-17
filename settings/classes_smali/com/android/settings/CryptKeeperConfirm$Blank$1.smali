.class Lcom/android/settings/CryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "mount"

    .line 81
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "CryptKeeper"

    if-nez v0, :cond_15

    const-string v0, "Failed to find the mount service"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 88
    :cond_15
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 90
    :try_start_19
    iget-object p0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v2, "password"

    .line 92
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_32

    .line 93
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    const/4 v4, 0x0

    .line 94
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    const-string/jumbo v2, "type"

    const/4 v4, -0x1

    .line 95
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0, p0, v3}, Landroid/os/storage/IStorageManager;->encryptStorage(ILjava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p0

    const-string v0, "Error while encrypting..."

    .line 98
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void
.end method
