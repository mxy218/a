.class Lcom/android/server/hips/intercept/Interception$2;
.super Ljava/lang/Object;
.source "Interception.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/hips/intercept/Interception$RulesConvertor;Lcom/android/server/hips/intercept/Interception$RulesConvertor;)I
    .registers 5
    .param p1, "r1"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .param p2, "r2"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3179
    invoke-virtual {p1}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->getRulesBlurCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->getRulesBlurCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3176
    check-cast p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    check-cast p2, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hips/intercept/Interception$2;->compare(Lcom/android/server/hips/intercept/Interception$RulesConvertor;Lcom/android/server/hips/intercept/Interception$RulesConvertor;)I

    move-result p1

    return p1
.end method
