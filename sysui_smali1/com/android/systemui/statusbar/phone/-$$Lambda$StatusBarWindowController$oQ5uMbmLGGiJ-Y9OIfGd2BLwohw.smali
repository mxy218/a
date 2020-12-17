.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/Display$Mode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;->f$1:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;->f$0:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;->f$1:Landroid/view/Display$Mode;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p0

    return p0
.end method
