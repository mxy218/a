.class public Lcom/android/server/pm/LauncherAppsService;
.super Lcom/android/server/SystemService;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;,
        Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    }
.end annotation


# instance fields
.field private final mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 92
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const-string v1, "launcherapps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/LauncherAppsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 97
    return-void
.end method
