.class public final synthetic Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/display/NightDisplaySettings;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/NightDisplaySettings;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iput p2, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iget p0, p0, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;->f$1:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/settings/display/NightDisplaySettings;->lambda$onCreateDialog$0$NightDisplaySettings(ILandroid/widget/TimePicker;II)V

    return-void
.end method
