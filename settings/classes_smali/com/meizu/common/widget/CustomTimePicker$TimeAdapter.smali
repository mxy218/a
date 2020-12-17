.class Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;I)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    .line 121
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .registers 5

    .line 149
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    goto :goto_36

    .line 170
    :cond_f
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 171
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {p0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    add-int/2addr p1, v1

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    if-nez p1, :cond_2d

    .line 163
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/CustomTimePicker;->access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    if-ne p1, v1, :cond_36

    .line 165
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/CustomTimePicker;->access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_3d
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->is24HourView()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4a
    if-nez p1, :cond_4e

    const/16 p1, 0xc

    .line 155
    :cond_4e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onChanged(Landroid/view/View;II)V
    .registers 5

    .line 125
    iget p1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    return-void

    .line 139
    :cond_f
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    add-int/2addr p3, p2

    invoke-static {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_2b

    .line 135
    :cond_16
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    if-nez p3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    invoke-static {p0, p2}, Lcom/meizu/common/widget/CustomTimePicker;->access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    goto :goto_2b

    .line 131
    :cond_20
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_2b

    .line 127
    :cond_26
    iget-object p0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    :goto_2b
    return-void
.end method
