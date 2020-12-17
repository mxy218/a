.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$ElzPpK0Puw-PlOEH67SuhTD5JYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$ElzPpK0Puw-PlOEH67SuhTD5JYQ;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$ElzPpK0Puw-PlOEH67SuhTD5JYQ;->f$0:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$4(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
