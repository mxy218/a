.class Lcom/google/android/material/picker/MaterialDatePickerView$1;
.super Ljava/lang/Object;
.source "MaterialDatePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialDatePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialDatePickerView;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/MaterialCalendarView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/picker/MonthInYearAdapter;->withinMonth(I)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 65
    :cond_d
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialDatePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-static {p0, p3}, Lcom/google/android/material/picker/MaterialDatePickerView;->access$002(Lcom/google/android/material/picker/MaterialDatePickerView;I)I

    return-void
.end method
