.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V
    .registers 2

    .line 919
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 923
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->statusUpdate(Landroid/content/Intent;)V

    .line 924
    return-void
.end method
