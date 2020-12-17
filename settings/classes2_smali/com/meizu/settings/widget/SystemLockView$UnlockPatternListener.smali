.class Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SystemLockView;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/widget/SystemLockView;Lcom/meizu/settings/widget/SystemLockView$1;)V
    .registers 3

    .line 383
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/settings/widget/SystemLockView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 396
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 397
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0, p1}, Lcom/meizu/settings/widget/SystemLockView;->access$000(Lcom/meizu/settings/widget/SystemLockView;Lcom/meizu/settings/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "left"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 399
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SystemLockView;->access$100(Lcom/meizu/settings/widget/SystemLockView;)V

    goto :goto_33

    :cond_20
    const-string v0, "right"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 401
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SystemLockView;->access$200(Lcom/meizu/settings/widget/SystemLockView;)V

    goto :goto_33

    .line 403
    :cond_2e
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->access$300(Lcom/meizu/settings/widget/SystemLockView;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public onPatternCleared()V
    .registers 1

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 410
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SystemLockView;->access$400(Lcom/meizu/settings/widget/SystemLockView;)I

    move-result p1

    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/settings/widget/SystemLockView;->access$500(Lcom/meizu/settings/widget/SystemLockView;)I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 411
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SystemLockView;->access$600(Lcom/meizu/settings/widget/SystemLockView;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 412
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->access$602(Lcom/meizu/settings/widget/SystemLockView;Z)Z

    .line 413
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SystemLockView;->access$700(Lcom/meizu/settings/widget/SystemLockView;)V

    :cond_21
    return-void
.end method

.method public onPatternStart()V
    .registers 1

    return-void
.end method
