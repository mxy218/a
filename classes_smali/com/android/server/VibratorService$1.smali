.class Lcom/android/server/VibratorService$1;
.super Landroid/app/IUidObserver$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 180
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 186
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 176
    iget-object p2, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 177
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 183
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 172
    iget-object p3, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p3}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    return-void
.end method
