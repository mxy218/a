.class public Lcom/android/server/appbinding/AppBindingService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field final mService:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 109
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$Injector;

    invoke-direct {v0}, Lcom/android/server/appbinding/AppBindingService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/appbinding/AppBindingService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lcom/android/server/appbinding/AppBindingService;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$1;)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    .line 115
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$100(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 125
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    const-string v1, "app_binding"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 120
    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$200(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 130
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$400(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 140
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$300(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 135
    return-void
.end method
