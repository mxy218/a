.class public Lcom/airbnb/lottie/parser/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/IntegerParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/airbnb/lottie/parser/IntegerParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/IntegerParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/IntegerParser;->INSTANCE:Lcom/airbnb/lottie/parser/IntegerParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/IntegerParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
