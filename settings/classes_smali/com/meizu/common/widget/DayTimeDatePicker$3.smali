.class Lcom/meizu/common/widget/DayTimeDatePicker$3;
.super Ljava/lang/Object;
.source "DayTimeDatePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DayTimeDatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$3;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 2

    .line 617
    iget-object p0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$3;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->setIsDrawFading(Z)V

    return-void
.end method

.method public onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 2

    return-void
.end method
