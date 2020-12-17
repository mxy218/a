.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedMenuItem"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mContext:Landroid/content/Context;

.field private final mIsRestrictedByBase:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    .line 420
    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    .line 422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 423
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 425
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return-void
.end method


# virtual methods
.method final doAction()V
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 439
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 440
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 444
    :cond_15
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method final isRestrictedByAdmin()Z
    .registers 1

    .line 448
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method final isRestrictedByBase()Z
    .registers 1

    .line 452
    iget-boolean p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
