.class public Landroid/support/v4/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;
    }
.end annotation


# static fields
.field private static final sTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroid/widget/TextView;)Landroid/graphics/Typeface;
    .locals 8
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v0, :cond_1

    move-object v6, p1

    check-cast v6, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    invoke-virtual {v6}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Landroid/support/v4/provider/FontRequest;

    move-result-object v1

    invoke-virtual {v6}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v3

    invoke-virtual {v6}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v4

    move-object v0, p0

    move-object v2, p5

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v7

    :cond_1
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    move-object v2, p1

    check-cast v2, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v7

    goto :goto_0
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;->createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method