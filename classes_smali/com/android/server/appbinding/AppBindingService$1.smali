.class Lcom/android/server/appbinding/AppBindingService$1;
.super Landroid/database/ContentObserver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method constructor <init>(Lcom/android/server/appbinding/AppBindingService;Landroid/os/Handler;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 203
    iget-object p1, p0, Lcom/android/server/appbinding/AppBindingService$1;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p1}, Lcom/android/server/appbinding/AppBindingService;->access$500(Lcom/android/server/appbinding/AppBindingService;)V

    .line 204
    return-void
.end method