.class Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .line 1162
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    const-string p1, "SendHoverEnterAndMoveDelayed"

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .registers 1

    .line 1162
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result p0

    return p0
.end method

.method private clear()V
    .registers 3

    .line 1195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1197
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1198
    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_1e

    .line 1199
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1198
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1201
    :cond_1e
    return-void
.end method

.method private isPending()Z
    .registers 2

    .line 1191
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1180
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1184
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1185
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1186
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1188
    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .line 1204
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1208
    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .registers 5

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 1174
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1175
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1176
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {p1}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1177
    return-void
.end method

.method public run()V
    .registers 8

    .line 1212
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1214
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1216
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1225
    const/4 v1, 0x1

    :goto_2a
    if-ge v1, v0, :cond_41

    .line 1226
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1234
    :cond_41
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    .line 1235
    return-void
.end method
