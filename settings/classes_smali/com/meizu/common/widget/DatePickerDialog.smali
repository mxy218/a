.class public Lcom/meizu/common/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mIsShowDay:Z

.field private mTimerPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .registers 16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 154
    invoke-direct/range {v0 .. v8}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V
    .registers 16

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    .line 175
    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    .line 177
    sget p2, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p2, 0x1040000

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 182
    sget v0, Lcom/meizu/common/R$layout;->mc_date_picker_dialog:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 186
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le p3, v0, :cond_3c

    .line 187
    new-instance p3, Lcom/meizu/common/widget/DatePickerDialog$1;

    invoke-direct {p3, p0, p2}, Lcom/meizu/common/widget/DatePickerDialog$1;-><init>(Lcom/meizu/common/widget/DatePickerDialog;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 201
    :cond_3c
    sget p3, Lcom/meizu/common/R$id;->datePicker:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/meizu/common/widget/DatePicker;

    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p0

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 206
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p5, p3, p4, p3}, Lcom/meizu/common/widget/DatePicker;->setTextColor(ILjava/util/List;I)V

    .line 213
    iget-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 214
    iget-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_one_height:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_two_height:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 214
    invoke-virtual {p3, p4, p1}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 217
    sget p1, Lcom/meizu/common/R$id;->time_preview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    .line 218
    iget-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p2}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result p3

    iget-object p4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p4}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result p4

    iget-object p5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p5}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result p5

    iget-object p6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p6}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result p6

    iget-boolean p7, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {p2 .. p7}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 222
    iget-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_20

    .line 223
    iget-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 224
    iget-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 225
    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object p0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    .line 224
    invoke-interface {p1, p2, v0, v1, p0}, Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    :cond_20
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .registers 11

    .line 230
    iget-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9

    .line 275
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "month"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "day"

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 279
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 266
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget-object p0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
