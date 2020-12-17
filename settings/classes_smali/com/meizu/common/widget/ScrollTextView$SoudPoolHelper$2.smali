.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V
    .registers 2

    .line 1910
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1913
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget-boolean v1, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->access$2200(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1914
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1d
    return-void
.end method
