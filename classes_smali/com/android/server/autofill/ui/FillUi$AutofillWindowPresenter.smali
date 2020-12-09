.class final Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillWindowPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V
    .registers 3

    .line 614
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .registers 4

    .line 627
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;-><init>(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    return-void
.end method

.method public synthetic lambda$show$0$FillUi$AutofillWindowPresenter(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->show(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .registers 5

    .line 618
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_26

    .line 619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AutofillWindowPresenter.show(): fit="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", params="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {p1}, Lcom/android/server/autofill/Helper;->paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 619
    const-string p3, "FillUi"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_26
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;

    invoke-direct {p3, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;-><init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    return-void
.end method
