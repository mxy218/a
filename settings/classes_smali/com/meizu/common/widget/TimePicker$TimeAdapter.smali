.class Lcom/meizu/common/widget/TimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePicker;I)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 117
    iput p2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .registers 5

    .line 144
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    goto :goto_1e

    :cond_c
    if-nez p1, :cond_15

    .line 158
    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/TimePicker;->access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    if-ne p1, v1, :cond_1e

    .line 160
    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/TimePicker;->access$600(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_20
    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 146
    :cond_27
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 147
    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_36
    if-nez p1, :cond_3a

    const/16 p1, 0xc

    .line 150
    :cond_3a
    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object p0, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public onChanged(Landroid/view/View;II)V
    .registers 5

    .line 121
    iget p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    return-void

    .line 129
    :cond_c
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    if-nez p3, :cond_11

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    invoke-static {p1, p2}, Lcom/meizu/common/widget/TimePicker;->access$202(Lcom/meizu/common/widget/TimePicker;Z)Z

    goto :goto_21

    .line 126
    :cond_16
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1, p3}, Lcom/meizu/common/widget/TimePicker;->access$102(Lcom/meizu/common/widget/TimePicker;I)I

    goto :goto_21

    .line 123
    :cond_1c
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1, p3}, Lcom/meizu/common/widget/TimePicker;->access$002(Lcom/meizu/common/widget/TimePicker;I)I

    .line 135
    :goto_21
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 136
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    .line 137
    invoke-virtual {p2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result p3

    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    invoke-interface {p1, p2, p3, v0}, Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V

    .line 139
    :cond_42
    iget-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget p0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    invoke-static {p1, p0}, Lcom/meizu/common/widget/TimePicker;->access$400(Lcom/meizu/common/widget/TimePicker;I)V

    return-void
.end method
