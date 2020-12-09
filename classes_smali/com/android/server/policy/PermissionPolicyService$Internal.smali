.class Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Lcom/android/server/policy/PermissionPolicyInternal;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Internal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 809
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V
    .registers 3

    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    return-void
.end method

.method private isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 10

    .line 841
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 842
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 843
    return v1

    .line 845
    :cond_8
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x63c6bb19

    const/4 v5, 0x1

    if-eq v3, v4, :cond_23

    const v4, 0x228937c8

    if-eq v3, v4, :cond_19

    :cond_18
    goto :goto_2c

    :cond_19
    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v1

    goto :goto_2c

    :cond_23
    const-string v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v5

    :goto_2c
    if-eqz v2, :cond_31

    if-eq v2, v5, :cond_31

    .line 865
    return v1

    .line 850
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 851
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 850
    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 852
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_45} :catch_4b

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_4a

    .line 855
    return v5

    .line 859
    :cond_4a
    goto :goto_64

    .line 857
    :catch_4b
    move-exception p2

    .line 858
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find application info for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_64
    const-string p2, "android.intent.extra.CALLING_PACKAGE"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    return v1
.end method


# virtual methods
.method public checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7

    .line 814
    if-eqz p3, :cond_3b

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 816
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Removed: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 p1, 0x0

    return p1

    .line 820
    :cond_3b
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized(I)Z
    .registers 3

    .line 825
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result p1

    return p1
.end method

.method public setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$700(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 831
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1}, Lcom/android/server/policy/PermissionPolicyService;->access$802(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 832
    monitor-exit v0

    .line 833
    return-void

    .line 832
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
