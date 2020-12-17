.class Lcom/android/server/VibratorService$2;
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
    .param p1, "this$0"  # Lcom/android/server/VibratorService;

    .line 193
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"  # I

    .line 203
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "cached"  # Z

    .line 209
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z

    .line 199
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 200
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z

    .line 206
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "procState"  # I
    .param p3, "procStateSeq"  # J

    .line 195
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    return-void
.end method
