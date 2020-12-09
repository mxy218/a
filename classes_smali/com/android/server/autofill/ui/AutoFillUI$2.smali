.class Lcom/android/server/autofill/ui/AutoFillUI$2;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showSaveUi$6(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field final synthetic val$log:Landroid/metrics/LogMaker;

.field final synthetic val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/PendingUi;)V
    .registers 4

    .line 301
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .registers 9

    .line 314
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 315
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$100(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 316
    if-eqz p1, :cond_37

    .line 318
    :try_start_11
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$300(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 322
    goto :goto_37

    .line 319
    :catch_20
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error starting negative action listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AutofillUI"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 325
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->cancelSave()V

    .line 327
    :cond_48
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$200(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 328
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_1f

    .line 333
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 335
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 336
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->cancelSave()V

    .line 339
    :cond_1f
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$400(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 340
    return-void
.end method

.method public onSave()V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 305
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$100(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 306
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 307
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->save()V

    .line 309
    :cond_20
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$200(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 310
    return-void
.end method
