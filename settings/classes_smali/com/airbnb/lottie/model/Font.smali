.class public Lcom/airbnb/lottie/model/Font;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final ascent:F

.field private final family:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/airbnb/lottie/model/Font;->ascent:F

    return-void
.end method


# virtual methods
.method public getFamily()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    return-object p0
.end method
