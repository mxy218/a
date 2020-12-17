.class final Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AugmentedAutofillState"
.end annotation


# instance fields
.field private final mServicePackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryServices:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGlobalWhitelistStateLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 971
    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 973
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 975
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Z

    .line 971
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->setServiceInfo(ILjava/lang/String;Z)V

    return-void
.end method

.method private setServiceInfo(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "serviceName"  # Ljava/lang/String;
    .param p3, "isTemporary"  # Z

    .line 980
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    if-eqz p3, :cond_c

    .line 982
    :try_start_5
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_11

    .line 984
    :cond_c
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 986
    :goto_11
    if-eqz p2, :cond_41

    .line 987
    nop

    .line 988
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 989
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_37

    .line 990
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setServiceInfo(): invalid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_40

    .line 993
    :cond_37
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    .end local v1  # "componentName":Landroid/content/ComponentName;
    :goto_40
    goto :goto_46

    .line 996
    :cond_41
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 998
    :goto_46
    monitor-exit v0

    .line 999
    return-void

    .line 998
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 1033
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 1037
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service packages: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1039
    :cond_1b
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 1040
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Temp services: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1042
    :cond_30
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V
    .registers 7
    .param p1, "options"  # Landroid/content/AutofillOptions;
    .param p2, "userId"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1003
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 1005
    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/WhitelistHelper;

    .line 1006
    .local v1, "helper":Lcom/android/internal/infra/WhitelistHelper;
    if-eqz v1, :cond_20

    .line 1007
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 1008
    nop

    .line 1009
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p1, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 1011
    .end local v1  # "helper":Lcom/android/internal/infra/WhitelistHelper;
    :cond_20
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isWhitelisted(ILandroid/content/ComponentName;)Z
    .registers 9
    .param p1, "userId"  # I
    .param p2, "componentName"  # Landroid/content/ComponentName;

    .line 1016
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    .line 1019
    :cond_c
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1020
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 1022
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for augmented autofill while using temporary service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 1023
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1022
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    monitor-exit v0

    return v2

    .line 1027
    .end local v1  # "packageName":Ljava/lang/String;
    :cond_50
    monitor-exit v0

    .line 1028
    const/4 v0, 0x1

    return v0

    .line 1027
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method
