.class Lcom/meizu/common/widget/DatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;I)V
    .registers 3

    .line 167
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 168
    iput p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .registers 6

    .line 173
    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_61

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    goto/16 :goto_a7

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 194
    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_1c
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v0, v3, :cond_59

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ne v0, v2, :cond_59

    .line 197
    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {p0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0

    .line 199
    :cond_59
    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    add-int/2addr p1, v1

    aget-object p0, p0, p1

    return-object p0

    .line 180
    :cond_61
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 181
    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p0, p1}, Lcom/meizu/common/widget/DatePicker;->access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 183
    :cond_70
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_95

    .line 184
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 186
    :cond_95
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_a7

    .line 187
    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_a7
    :goto_a7
    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_a9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p0}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onChanged(Landroid/view/View;II)V
    .registers 9

    .line 212
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result p1

    .line 213
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    .line 215
    iget p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_df

    if-eq p2, v0, :cond_69

    const/4 p1, 0x3

    if-eq p2, p1, :cond_17

    return-void

    .line 282
    :cond_17
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1e3

    .line 283
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 p2, p3, 0x1

    invoke-static {p1, p2}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 284
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_1e3

    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-ne p1, p2, :cond_1e3

    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-ne p1, p2, :cond_1e3

    .line 285
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    goto/16 :goto_1e3

    .line 264
    :cond_69
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 265
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p2

    if-eqz p2, :cond_9c

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    if-ne p2, p3, :cond_9c

    .line 266
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2, p3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 268
    :cond_9c
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-eq p1, p2, :cond_1e3

    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    if-eqz p1, :cond_1e3

    .line 269
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result p1

    .line 271
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p1}, Lcom/meizu/common/widget/DatePicker;->access$1502(Lcom/meizu/common/widget/DatePicker;I)I

    .line 272
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 273
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-ge p1, p2, :cond_1e3

    .line 274
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p1}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 275
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v1}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto/16 :goto_1e3

    .line 217
    :cond_df
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    .line 218
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/2addr p3, v3

    invoke-static {v2, p3}, Lcom/meizu/common/widget/DatePicker;->access$402(Lcom/meizu/common/widget/DatePicker;I)I

    .line 219
    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p3

    if-eqz p3, :cond_128

    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ne p3, v2, :cond_128

    .line 220
    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p3, v2, :cond_128

    .line 221
    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p3, v2}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 225
    :cond_128
    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p3

    if-eqz p3, :cond_1a2

    .line 226
    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    .line 228
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 229
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result p2

    .line 230
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    invoke-static {v2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 231
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v4

    invoke-static {v3, p2, v2, v4}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;III)I

    move-result p2

    .line 233
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, p3}, Lcom/meizu/common/widget/DatePicker;->access$1202(Lcom/meizu/common/widget/DatePicker;I)I

    .line 234
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, p3, p2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(II)V

    .line 235
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v2

    invoke-static {p2, v2}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    goto :goto_180

    .line 238
    :cond_172
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p3}, Lcom/meizu/common/widget/DatePicker;->access$1202(Lcom/meizu/common/widget/DatePicker;I)I

    .line 239
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    :goto_180
    sub-int/2addr p3, v1

    .line 242
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-ge p3, p2, :cond_1a2

    .line 243
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p1}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 244
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 245
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    invoke-virtual {p2, p3, v1}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 250
    :cond_1a2
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-eq p1, p2, :cond_1e3

    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    if-eqz p1, :cond_1e3

    .line 251
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result p1

    .line 253
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p1}, Lcom/meizu/common/widget/DatePicker;->access$1502(Lcom/meizu/common/widget/DatePicker;I)I

    .line 254
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 255
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    if-ge p1, p2, :cond_1e3

    .line 256
    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2, p1}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 257
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v1}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 293
    :cond_1e3
    :goto_1e3
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;I)V

    .line 294
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/common/widget/DatePicker;->access$1700(Lcom/meizu/common/widget/DatePicker;I)V

    .line 296
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_218

    .line 297
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$1800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p2}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result p3

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    .line 298
    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1300(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    .line 297
    invoke-interface {p1, p2, p3, v2, v3}, Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V

    .line 300
    :cond_218
    iget p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    if-eq p1, v1, :cond_21e

    if-ne p1, v0, :cond_227

    .line 301
    :cond_21e
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/common/widget/DatePicker;->access$1900(Lcom/meizu/common/widget/DatePicker;I)V

    .line 303
    :cond_227
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p1

    if-eqz p1, :cond_23c

    .line 304
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {p1}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 306
    :cond_23c
    iget-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget p0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    invoke-static {p1, p0}, Lcom/meizu/common/widget/DatePicker;->access$2000(Lcom/meizu/common/widget/DatePicker;I)V

    return-void
.end method
