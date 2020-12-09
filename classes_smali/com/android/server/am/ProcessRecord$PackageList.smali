.class final Lcom/android/server/am/ProcessRecord$PackageList;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PackageList"
.end annotation


# instance fields
.field final mPkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 100
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->clearPackageList()V

    .line 101
    return-void
.end method

.method containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object p1
.end method

.method keyAt(I)Ljava/lang/String;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->addPackage(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object p1
.end method

.method size()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object p1
.end method
