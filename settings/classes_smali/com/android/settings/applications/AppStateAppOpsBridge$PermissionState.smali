.class public Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.super Ljava/lang/Object;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateAppOpsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionState"
.end annotation


# instance fields
.field public appOpMode:I

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public final packageName:Ljava/lang/String;

.field public permissionDeclared:Z

.field public staticPermissionGranted:Z

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    const/4 p1, 0x3

    .line 324
    iput p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    .line 325
    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public isPermissible()Z
    .registers 3

    .line 332
    iget v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 333
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    return p0

    :cond_8
    if-nez v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
