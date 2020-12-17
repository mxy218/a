.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;)V
    .registers 2

    .line 1875
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 4

    .line 1881
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    return-void
.end method
