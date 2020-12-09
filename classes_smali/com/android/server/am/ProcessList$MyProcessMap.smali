.class final Lcom/android/server/am/ProcessList$MyProcessMap;
.super Lcom/android/internal/app/ProcessMap;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyProcessMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/app/ProcessMap<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/android/server/am/ProcessList$MyProcessMap;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 4

    .line 523
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 524
    iget-object p2, p0, Lcom/android/server/am/ProcessList$MyProcessMap;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p2, p2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessAdded(Lcom/android/server/wm/WindowProcessController;)V

    .line 525
    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 520
    check-cast p3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 5

    .line 530
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 531
    iget-object v1, p0, Lcom/android/server/am/ProcessList$MyProcessMap;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessRemoved(Ljava/lang/String;I)V

    .line 532
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    return-object p1
.end method
