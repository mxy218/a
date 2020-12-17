.class Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnPositiveClickListener"
.end annotation


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meizu/common/widget/TimePickerDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/TimePickerDialog;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/TimePickerDialog;Lcom/meizu/common/widget/TimePickerDialog$1;)V
    .registers 3

    .line 149
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;-><init>(Lcom/meizu/common/widget/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/meizu/common/widget/TimePickerDialog$OnPositiveClickListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/TimePickerDialog;

    if-eqz p0, :cond_37

    .line 160
    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$100(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_37

    .line 163
    :cond_11
    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$200(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 164
    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$100(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    move-result-object p1

    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$200(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePicker;

    move-result-object p2

    .line 165
    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$200(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 166
    invoke-static {p0}, Lcom/meizu/common/widget/TimePickerDialog;->access$200(Lcom/meizu/common/widget/TimePickerDialog;)Lcom/meizu/common/widget/TimePicker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 164
    invoke-interface {p1, p2, v0, p0}, Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V

    :cond_37
    :goto_37
    return-void
.end method
