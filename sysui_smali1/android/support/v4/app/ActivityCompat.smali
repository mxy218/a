.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method public static finishAffinity(Landroid/app/Activity;)V
    .registers 3
    .param p0  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_d

    .line 290
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_d
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 169
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5
    .param p0  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 498
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_b

    .line 499
    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 504
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1f

    .line 505
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_1b

    .line 506
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 507
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 509
    :cond_1b
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_34

    .line 510
    :cond_1f
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_34

    .line 511
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_34
    :goto_34
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4
    .param p0  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 556
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p0  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_d

    .line 236
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_d
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 10
    .param p0  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/content/IntentSender;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 271
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_d

    .line 274
    :cond_a
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :goto_d
    return-void
.end method
