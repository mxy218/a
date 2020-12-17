.class public final Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 285
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 295
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v1, "accessibility"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 290
    return-void
.end method
