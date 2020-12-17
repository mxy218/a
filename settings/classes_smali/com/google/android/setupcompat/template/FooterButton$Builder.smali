.class public Lcom/google/android/setupcompat/template/FooterButton$Builder;
.super Ljava/lang/Object;
.source "FooterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/template/FooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonType:I

.field private final context:Landroid/content/Context;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/String;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 314
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    .line 317
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    .line 320
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupcompat/template/FooterButton;
    .registers 8

    .line 354
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILcom/google/android/setupcompat/template/FooterButton$1;)V

    return-object v6
.end method

.method public setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .registers 2

    .line 343
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->buttonType:I

    return-object p0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .registers 2
    .param p1  # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 337
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 331
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 349
    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton$Builder;->theme:I

    return-object p0
.end method
