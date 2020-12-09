.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 279
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)Lcom/android/server/textservices/TextServicesManagerService;
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 283
    const-class v0, Lcom/android/server/textservices/TextServicesManagerInternal;

    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;

    invoke-direct {v1, p0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;-><init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    const-string/jumbo v1, "textservices"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 292
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onStopUser(I)V

    .line 300
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onUnlockUser(I)V

    .line 310
    return-void
.end method
