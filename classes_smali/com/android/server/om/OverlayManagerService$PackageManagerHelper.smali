.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelper"
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "

.field private static final TAB2:Ljava/lang/String; = "        "


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    .line 1029
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1030
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1031
    return-void
.end method


# virtual methods
.method public cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "pi"  # Landroid/content/pm/PackageInfo;

    .line 1085
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1086
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_15

    .line 1087
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 1088
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    :cond_15
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/om/DumpState;

    .line 1112
    const-string v0, "PackageInfo cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1117
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_2b

    .line 1118
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1119
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1117
    .end local v3  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1121
    .end local v2  # "i":I
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    return-void

    .line 1125
    .end local v0  # "count":I
    .end local v1  # "n":I
    :cond_45
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_53

    .line 1126
    const-string v0, "    <empty>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1130
    :cond_53
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1131
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v0, :cond_bc

    .line 1132
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1133
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1135
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1136
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    goto :goto_86

    .line 1131
    .end local v2  # "userId":I
    .end local v3  # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1139
    .end local v1  # "i":I
    :cond_bc
    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 1105
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1106
    return-void
.end method

.method public forgetPackageInfo(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1094
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1095
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_b

    .line 1096
    return-void

    .line 1098
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1100
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 1102
    :cond_19
    return-void
.end method

.method public getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1079
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1080
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    :goto_12
    return-object v1
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "useCache"  # Z

    .line 1035
    if-eqz p3, :cond_9

    .line 1036
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1037
    .local v0, "cachedPi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_9

    .line 1038
    return-object v0

    .line 1042
    .end local v0  # "cachedPi":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1043
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p3, :cond_17

    if-eqz v0, :cond_17

    .line 1044
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 1046
    :cond_17
    return-object v0

    .line 1047
    .end local v0  # "pi":Landroid/content/pm/PackageInfo;
    :catch_18
    move-exception v0

    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName1"  # Ljava/lang/String;
    .param p2, "packageName2"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1064
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 1066
    :catch_b
    move-exception v1

    .line 1069
    return v0
.end method
