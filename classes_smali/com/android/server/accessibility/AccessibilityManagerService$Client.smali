.class Lcom/android/server/accessibility/AccessibilityManagerService$Client;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field final mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

.field mLastSentRelevantEventTypes:I

.field final mPackageNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5

    .line 3956
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3957
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 3958
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 3959
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3960
    :try_start_16
    invoke-static {p1, p4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 3961
    monitor-exit p2

    .line 3962
    return-void

    .line 3961
    :catchall_1e
    move-exception p1

    monitor-exit p2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 6

    .line 3951
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method
