.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader$1;
.super Ljava/lang/Object;
.source "FlymeRAngleAdjustAppLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/widget/MzAppEntry;Lcom/meizu/settings/widget/MzAppEntry;)I
    .registers 3

    .line 222
    invoke-virtual {p1}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->getCompareResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 219
    check-cast p1, Lcom/meizu/settings/widget/MzAppEntry;

    check-cast p2, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader$1;->compare(Lcom/meizu/settings/widget/MzAppEntry;Lcom/meizu/settings/widget/MzAppEntry;)I

    move-result p0

    return p0
.end method
