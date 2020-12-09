.class Lcom/android/server/autofill/ui/FillUi$ViewItem;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation


# instance fields
.field public final dataset:Landroid/service/autofill/Dataset;

.field public final filter:Ljava/util/regex/Pattern;

.field public final filterable:Z

.field public final value:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V
    .registers 6

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    .line 560
    iput-object p4, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    .line 561
    iput-object p5, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 562
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    .line 563
    iput-boolean p3, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    .line 564
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/CharSequence;)Z
    .registers 5

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 573
    return v1

    .line 575
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 577
    return v2

    .line 579
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_23

    .line 582
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    .line 585
    :cond_23
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 586
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p1

    if-nez p1, :cond_30

    goto :goto_3a

    :cond_30
    move v1, v2

    goto :goto_3a

    .line 587
    :cond_32
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 585
    :goto_3a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewItem:[view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 594
    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 596
    :goto_1a
    if-eqz v1, :cond_24

    .line 597
    const-string v2, ", dataset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    const-string v2, "_chars"

    if-eqz v1, :cond_3b

    .line 601
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_3b
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filterable:Z

    if-eqz v1, :cond_44

    .line 604
    const-string v1, ", filterable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_44
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_5d

    .line 608
    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->filter:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_5d
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
