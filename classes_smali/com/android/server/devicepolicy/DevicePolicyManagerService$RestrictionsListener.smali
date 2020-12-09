.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RestrictionsListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    .line 869
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 873
    nop

    .line 874
    const-string/jumbo v0, "no_sharing_into_profile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 875
    nop

    .line 876
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 877
    if-eq p2, p3, :cond_11

    const/4 p2, 0x1

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    .line 879
    :goto_12
    if-eqz p2, :cond_35

    .line 881
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.app.action.DATA_SHARING_RESTRICTION_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    iget-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string p3, "android.intent.extra.USER_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 888
    :cond_35
    return-void
.end method
