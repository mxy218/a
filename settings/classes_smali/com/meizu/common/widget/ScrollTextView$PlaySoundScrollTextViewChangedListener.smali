.class Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaySoundScrollTextViewChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 2

    .line 2004
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/ScrollTextView;Lcom/meizu/common/widget/ScrollTextView$1;)V
    .registers 3

    .line 2004
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/meizu/common/widget/ScrollTextView;II)V
    .registers 4

    .line 2007
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/ScrollTextView;->access$2400(Lcom/meizu/common/widget/ScrollTextView;)V

    return-void
.end method
